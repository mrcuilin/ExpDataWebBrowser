/*
 * CValue.java
 *
 * Created on 2006年7月23日, 下午6:38
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package Generic.DAOs;

/**
 * 所用实体的基类
 * CDao基类映射CValue属性为数据库字段
 * @author Cuilin
 */
public class CValue extends ICanExport {
    /** Creates a new instance of CValue */
    public static String getJavascriptArray( CValue[] d ){
        StringBuilder r = new StringBuilder();
        r.append("[");
        for( int i = 0; i < d.length; i++ ) {
            if( i > 0 ) r.append(",");
            r.append( d[i].exportToJavascriptData() );
        }
        r.append("]");
        return r.toString();
    }
}
