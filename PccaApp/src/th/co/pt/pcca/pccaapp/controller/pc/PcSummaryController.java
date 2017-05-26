package th.co.pt.pcca.pccaapp.controller.pc;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class PcSummaryController {

	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@RequestMapping(value = "/pcSummary", method = RequestMethod.GET)
	public ModelAndView cahistory() {
		return new ModelAndView("pcSummary", null);
	}
}
