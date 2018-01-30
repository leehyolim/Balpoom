package com.balpoom.view;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.balpoom.product.OverallProductVO;
import com.balpoom.product.ProductService;
import com.balpoom.product.ProductVO;
import com.balpoom.product.RegisterVO;

@Controller
@SessionAttributes("Product")
public class productController {

	@Autowired
	private ProductService productService;
	private final Calendar cal = Calendar.getInstance();
	private final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");

	@RequestMapping("/getProduct.do")
	public String getProduct(ProductVO pvo, Model model) {

		model.addAttribute("ProductListGB", productService.getProductGB(pvo));
		model.addAttribute("ProductList", productService.getProduct(pvo));
		model.addAttribute("ProductListS", productService.getProductS(pvo));
		model.addAttribute("ProductListC", productService.getProductC(pvo));
		System.out.println(productService.getProductC(pvo));
		System.out.println(productService.getProductS(pvo));
		System.out.println(productService.getProduct(pvo));
		System.out.println("asdf");

		return "detail.jsp";

	}

	public void getProductGB(ProductVO pvo) {
		productService.getProductGB(pvo);
	}

	public void getProductS(ProductVO pvo) {
		productService.getProductS(pvo);
	}

	public void getProductC(ProductVO pvo) {
		productService.getProductC(pvo);
	}

	@RequestMapping("/fitple.do")
	public ModelAndView doFitple(@RequestParam String p_type,
			@RequestParam int s1,@RequestParam int s2,@RequestParam int s3,
			@RequestParam int s4,@RequestParam int s5){
		List<String> smallCategory = new ArrayList<>();
		ModelAndView mav = new ModelAndView();
		OverallProductVO vo = new OverallProductVO();
		vo.setP_type(p_type);
		vo.setP_s1(s1);
		vo.setP_s2(s2);
		vo.setP_s3(s3);
		vo.setP_s4(s4);
		vo.setP_s5(s5);
		System.out.println(p_type);
		System.out.println(s1);
		System.out.println(s2);
		System.out.println(s3);
		System.out.println(s4);
		System.out.println(s5);
		List<OverallProductVO> fitple = productService.doFitple(vo);
		List<OverallProductVO> best = productService.getBests(vo);
		for(OverallProductVO o : fitple){
			cal.setTime(o.getR_reg());
			o.setModify_date((sdf.format(cal.getTime())));
		}
		for(OverallProductVO b : best){
			cal.setTime(b.getR_reg());
			b.setModify_date((sdf.format(cal.getTime())));
		}
		p_type = p_type.toUpperCase();
		mav.addObject("p_type", p_type);
		if (p_type.equalsIgnoreCase("Outer")) {
			smallCategory.add("Coat");
			smallCategory.add("Jacket");
			smallCategory.add("Bubble");
			smallCategory.add("AndSoOn");
		} else if (p_type.equalsIgnoreCase("Top")) {
			smallCategory.add("TShirt");
			smallCategory.add("Shirt");
			smallCategory.add("Hoody");
			smallCategory.add("AndSoOn");
		} else if (p_type.equalsIgnoreCase("Bottom")) {
			smallCategory.add("Jeans");
			smallCategory.add("Slacks");
			smallCategory.add("Cotton");
			smallCategory.add("AndSoOn");
		} else if (p_type.equalsIgnoreCase("Shoes")) {
			smallCategory.add("Running");
			smallCategory.add("Sneakers");
			smallCategory.add("Sports");
			smallCategory.add("Classic");
		}
		mav.addObject("smallCategory",smallCategory);
		mav.addObject("overall",fitple);
		mav.addObject("best", best);
		mav.setViewName("productList.jsp");
		return mav;
	}
	
	@RequestMapping("getOveralls.do")
	public ModelAndView getOveralls(@RequestParam String p_type) {
		List<String> smallCategory = new ArrayList<>();
		ModelAndView mav = new ModelAndView();
		OverallProductVO vo = new OverallProductVO();
		OverallProductVO vo2 = new OverallProductVO();
		vo.setP_type(p_type);
		vo2.setP_type(p_type);
		List<OverallProductVO> overall = productService.getOveralls(vo);
		List<OverallProductVO> best = productService.getBests(vo2);
		for(OverallProductVO o : overall){
			cal.setTime(o.getR_reg());
			o.setModify_date((sdf.format(cal.getTime())));
		}
		for(OverallProductVO b : best){
			cal.setTime(b.getR_reg());
			b.setModify_date((sdf.format(cal.getTime())));
		}
		mav.addObject("overall", overall);
		mav.addObject("best", best);
		p_type = p_type.toUpperCase();
		mav.addObject("p_type", p_type);
		if (p_type.equalsIgnoreCase("Outer")) {
			smallCategory.add("Coat");
			smallCategory.add("Jacket");
			smallCategory.add("Bubble");
			smallCategory.add("AndSoOn");
		} else if (p_type.equalsIgnoreCase("Top")) {
			smallCategory.add("TShirt");
			smallCategory.add("Shirt");
			smallCategory.add("Hoody");
			smallCategory.add("AndSoOn");
		} else if (p_type.equalsIgnoreCase("Bottom")) {
			smallCategory.add("Jeans");
			smallCategory.add("Slacks");
			smallCategory.add("Cotton");
			smallCategory.add("AndSoOn");
		} else if (p_type.equalsIgnoreCase("Shoes")) {
			smallCategory.add("Running");
			smallCategory.add("Sneakers");
			smallCategory.add("Sports");
			smallCategory.add("Classic");
		}
		mav.addObject("smallCategory",smallCategory);
		mav.setViewName("productList.jsp");
		return mav;
	}

	@RequestMapping("getOverallsDetails.do")
	public ModelAndView getOverallsDetails(@RequestParam String p_type, @RequestParam String p_type_detail) {
		List<String> smallCategory = new ArrayList<>();
		ModelAndView mav = new ModelAndView();
		OverallProductVO vo = new OverallProductVO();
		OverallProductVO vo2 = new OverallProductVO();
		vo.setP_type(p_type);
		vo.setP_type_detail(p_type_detail);
		vo2.setP_type(p_type);
		List<OverallProductVO> overall = productService.getOverallsDetails(vo);
		List<OverallProductVO> best = productService.getBests(vo2);
		for(OverallProductVO o : overall){
			cal.setTime(o.getR_reg());
			o.setModify_date((sdf.format(cal.getTime())));
		}
		for(OverallProductVO b : best){
			cal.setTime(b.getR_reg());
			b.setModify_date((sdf.format(cal.getTime())));
		}
		mav.addObject("overall", overall);
		mav.addObject("best", best);
		p_type = p_type.toUpperCase();
		mav.addObject("p_type", p_type);
		if (p_type.equalsIgnoreCase("Outer")) {
			smallCategory.add("Coat");
			smallCategory.add("Jacket");
			smallCategory.add("Bubble");
			smallCategory.add("AndSoOn");
		} else if (p_type.equalsIgnoreCase("Top")) {
			smallCategory.add("TShirt");
			smallCategory.add("Shirt");
			smallCategory.add("Hoody");
			smallCategory.add("AndSoOn");
		} else if (p_type.equalsIgnoreCase("Bottom")) {
			smallCategory.add("Jeans");
			smallCategory.add("Slacks");
			smallCategory.add("Cotton");
			smallCategory.add("AndSoOn");
		} else if (p_type.equalsIgnoreCase("Shoes")) {
			smallCategory.add("Running");
			smallCategory.add("Sneakers");
			smallCategory.add("Sports");
			smallCategory.add("Classic");
		}
		mav.addObject("smallCategory",smallCategory);
		mav.setViewName("productList.jsp");
		return mav;
	}

	@RequestMapping("/insertProduct.do")
	public String insertProduct(MultipartHttpServletRequest req) throws IllegalStateException, IOException {
		System.out.println(1);
		String p_name = req.getParameter("p_name");
		String p_type = req.getParameter("p_type");
		int p_price = Integer.parseInt(req.getParameter("p_price"));
		String[] colorOpt = new String[10];
		colorOpt[0] = req.getParameter("colorOption");
		String[] size = new String[4];
		int[] s_size = new int[5];
		int[] m_size = new int[5];
		int[] l_size = new int[5];
		int[] xl_size = new int[5];

		String regdate = req.getParameter("regdate");
		int s_no = Integer.parseInt(req.getParameter("s_no"));
		String p_type_detail = req.getParameter("p_type_detail");
		System.out.println(p_type_detail);
		System.out.println(2);
		String p_common_name = "";

		if (p_type.equals("Outer")) {
			p_common_name += "OUT";
		} else if (p_type.equals("Top")) {
			p_common_name += "TOP";
		} else if (p_type.equals("Bottom")) {
			p_common_name += "BOT";
		} else if (p_type.equals("Shoes")) {
			p_common_name += "SHO";
		}
		p_common_name += s_no;
		p_common_name += regdate;
		p_common_name += p_name;
		System.out.println(3);
		RegisterVO rvo = new RegisterVO(regdate, p_common_name, s_no);
		System.out.println(4);
		System.out.println(rvo.toString());

		String productImg_commonName = regdate + "_" + p_common_name;
		String path = "D:/SpringSpace/BalPoom/src/main/webapp/product_img";
		File dir = new File(path, regdate);

		if (!dir.exists()) {
			dir.mkdir();
			path += "//" + regdate;
		}
		dir = new File(path, p_common_name);
		if (!dir.exists()) {
			dir.mkdir();
			path += "//" + p_common_name;
		}

		MultipartFile[] img = new MultipartFile[7];
		ProductVO pvo = new ProductVO();
		pvo.setMain_img1(req.getFile("main_img1"));
		pvo.setMain_img2(req.getFile("main_img2"));
		pvo.setDetail_img1(req.getFile("detail_img1"));
		pvo.setDetail_img2(req.getFile("detail_img2"));
		pvo.setDetail_img3(req.getFile("detail_img3"));
		pvo.setDetail_img4(req.getFile("detail_img4"));
		pvo.setDetail_img5(req.getFile("detail_img5"));

		img[0] = pvo.getMain_img1();
		img[1] = pvo.getMain_img2();
		img[2] = pvo.getDetail_img1();
		img[3] = pvo.getDetail_img2();
		img[4] = pvo.getDetail_img3();
		img[5] = pvo.getDetail_img4();
		img[6] = pvo.getDetail_img5();
		for (int i = 0; i < img.length; i++) {
			System.out.println(i + "번째 시작");

			if (!img[i].isEmpty()) {
				System.out.println(i + "번째 if절");
				String fileName = img[i].getOriginalFilename();
				int index = fileName.indexOf(".");
				String extension = fileName.substring(index);

				img[i].transferTo(new File(path + "//" + productImg_commonName + i + extension));
			}
		}

		productService.insertRegister(rvo);
		System.out.println(5);
		rvo.setP_common_name(p_common_name);

		int r_no = productService.getRegister(rvo).getR_no();
		System.out.println(6);
		System.out.println(r_no);
		System.out.println(7);

		for (int i = 0; i < colorOpt.length; i++) {
			String p_identifier = p_common_name;
			System.out.println("첫번째 반복문 실행 : color" + i);
			if (i > 0) {
				System.out.println("i가 0보다 크다");
				colorOpt[i] = req.getParameter("colorOption" + i);
			}

			if (colorOpt[i] != null && !colorOpt[i].equals("")) {

				System.out.println("첫번째 if절 실행 color" + i + "=NOT NULL");

				p_identifier += "/" + colorOpt[i];

				String tmp = p_identifier;
				for (int j = 0; j < size.length; j++) {
					System.out.println("두번째 반복문 실행 : size" + j);
					size[0] = req.getParameter("size_s");
					size[1] = req.getParameter("size_m");
					size[2] = req.getParameter("size_l");
					size[3] = req.getParameter("size_xl");
					if (size[j] != null && !size[j].equals("")) {
						p_identifier = tmp;
						System.out.println("두번째 if절 실행 size" + j + "=NOT NULL");
						if (j == 0) {
							System.out.println("s사이즈 입력시작");
							p_identifier += "/S";
							s_size[0] = Integer.parseInt(req.getParameter("s_size1"));
							s_size[1] = Integer.parseInt(req.getParameter("s_size2"));
							s_size[2] = Integer.parseInt(req.getParameter("s_size3"));
							s_size[3] = Integer.parseInt(req.getParameter("s_size4"));
							s_size[4] = Integer.parseInt(req.getParameter("s_size5"));
							ProductVO pvoO = new ProductVO(p_identifier, r_no, p_name, p_type, p_price, s_size[0],
									s_size[1], s_size[2], s_size[3], s_size[4], colorOpt[i], size[j], p_common_name,
									s_no, p_type_detail);
							System.out.println(6);
							productService.insertProduct(pvoO);
							System.out.println("s사이즈 입력완료");
						} else if (j == 1) {
							System.out.println("m사이즈 입력시작");
							p_identifier += "/M";
							m_size[0] = Integer.parseInt(req.getParameter("m_size1"));
							m_size[1] = Integer.parseInt(req.getParameter("m_size2"));
							m_size[2] = Integer.parseInt(req.getParameter("m_size3"));
							m_size[3] = Integer.parseInt(req.getParameter("m_size4"));
							m_size[4] = Integer.parseInt(req.getParameter("m_size5"));
							ProductVO pvoO = new ProductVO(p_identifier, r_no, p_name, p_type, p_price, m_size[0],
									m_size[1], m_size[2], m_size[3], m_size[4], colorOpt[i], size[j], p_common_name,
									s_no, p_type_detail);
							productService.insertProduct(pvoO);
							System.out.println("m사이즈 입력완료");
						} else if (j == 2) {
							System.out.println("l사이즈 입력시작");
							p_identifier += "/L";
							l_size[0] = Integer.parseInt(req.getParameter("l_size1"));
							l_size[1] = Integer.parseInt(req.getParameter("l_size2"));
							l_size[2] = Integer.parseInt(req.getParameter("l_size3"));
							l_size[3] = Integer.parseInt(req.getParameter("l_size4"));
							l_size[4] = Integer.parseInt(req.getParameter("l_size5"));
							ProductVO pvoO = new ProductVO(p_identifier, r_no, p_name, p_type, p_price, l_size[0],
									l_size[1], l_size[2], l_size[3], l_size[4], colorOpt[i], size[j], p_common_name,
									s_no, p_type_detail);
							productService.insertProduct(pvoO);
							System.out.println("l사이즈 입력완료");

						} else if (j == 3) {
							System.out.println("xl사이즈 입력시작");
							p_identifier += "/XL";
							xl_size[0] = Integer.parseInt(req.getParameter("xl_size1"));
							xl_size[1] = Integer.parseInt(req.getParameter("xl_size2"));
							xl_size[2] = Integer.parseInt(req.getParameter("xl_size3"));
							xl_size[3] = Integer.parseInt(req.getParameter("xl_size4"));
							xl_size[4] = Integer.parseInt(req.getParameter("xl_size5"));

							ProductVO pvoO = new ProductVO(p_identifier, r_no, p_name, p_type, p_price, xl_size[0],
									xl_size[1], xl_size[2], xl_size[3], xl_size[4], colorOpt[i], size[j], p_common_name,
									s_no, p_type_detail);
							productService.insertProduct(pvoO);
							System.out.println("xl사이즈 입력완료");

						}
					}
				}
			}

		}
		return "result.jsp";
	}

	public void insertRegister(RegisterVO rvo) {
		productService.insertRegister(rvo);
	}

	public void getRegister(RegisterVO rvo) {
		productService.getRegister(rvo);
	}
	
	


}
