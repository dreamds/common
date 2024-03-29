<?php if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * 页面示例模板控制器
 * User: Dreamma
 * Date: 2019/2/20
 * Time: 11:22
 */
class template extends CI_Controller
{
    /**
     * 网页示例模板
     */
    public function index()
    {
        $this->load->view('base/head.tpl');
        $this->load->view('base/template.tpl');
        $this->load->view('base/foot.tpl');
    }

    /**
     * 测试vue的相关功能
     */
    public function vue()
    {
        $this->load->view('base/head.tpl');
        $this->load->view('test/vue.tpl');
        $this->load->view('base/foot.tpl');
    }
}