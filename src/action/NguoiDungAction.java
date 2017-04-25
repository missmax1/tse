package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.NguoiDungForm;
import model.bo.NguoiDungBO;

public class NguoiDungAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		NguoiDungForm nguoiDungForm = (NguoiDungForm)form;
		NguoiDungBO nguoiDungBO = new NguoiDungBO();
		
		String tendangnhap = nguoiDungForm.getTenDangNhap();
		String matkhau = nguoiDungForm.getMatKhau();
		
		if (nguoiDungBO.checkLogin(tendangnhap, matkhau)) 
			return mapping.findForward("thanhcong");
		else
		{
			nguoiDungForm.setThongBao("Bạn nhập sai tài khoản hoặc mật khẩu!");
			return mapping.findForward("thatbai");
		}
		//tesst
		//a

	}
}

