package pe.example.controller;

import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import pe.example.entity.Auto;
import pe.example.service.AutoService;

@Controller
@RequestMapping("/auto")
public class AutoController {

    @Autowired
    @Qualifier("autoServiceImpl")
    private AutoService autoService;

    public AutoController() {}

    @GetMapping("/listar")
    public String listar_GET(Map<String, Object> map) {
        map.put("bAutos", autoService.findAll());
        return "Auto/listar";  // La vista listar.jsp debe existir en /WEB-INF/views/Auto/listar.jsp
    }

    @GetMapping("/registrar")
    public String registrar_GET(Model model) {
        Auto autoModel = new Auto();
        model.addAttribute("auto", autoModel);
        return "Auto/registrar";
    }

    @PostMapping("/registrar")
    public String registrar_POST(Auto auto) {
        autoService.insert(auto);
        return "redirect:/auto/listar";
    }

    @GetMapping("/detalle/{auto_id}")
    public String detalle_GET(Model model, @PathVariable Integer auto_id) {
        Auto autoDb = autoService.findById(auto_id);
        model.addAttribute("auto", autoDb);
        return "Auto/detalle";
    }

    @GetMapping("/editar/{auto_id}")
    public String editar_GET(Model model, @PathVariable Integer auto_id) {
        Auto autoDb = autoService.findById(auto_id);
        model.addAttribute("auto", autoDb);
        return "Auto/editar";
    }

    @PostMapping("/editar/{auto_id}")
    public String editar_POST(Auto auto) {
        autoService.update(auto);
        return "redirect:/auto/listar";
    }

    @GetMapping("/borrar/{auto_id}")
    public String borrar_GET(Model model, @PathVariable Integer auto_id) {
        Auto autoDb = autoService.findById(auto_id);
        model.addAttribute("auto", autoDb);
        return "Auto/borrar";
    }

    @PostMapping("/borrar/{auto_id}")
    public String borrar_POST(Auto auto) {
        autoService.delete(auto.getAuto_id());
        return "redirect:/auto/listar";
    }
}

