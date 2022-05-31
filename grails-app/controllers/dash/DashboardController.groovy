package dash

import com.lowagie.text.Font
import org.jfree.chart.ChartRenderingInfo
import org.jfree.chart.ChartUtilities
import org.jfree.chart.JFreeChart
import org.jfree.chart.entity.StandardEntityCollection
import org.jfree.chart.plot.PiePlot3D
import org.jfree.data.general.DefaultPieDataset
import org.jfree.ui.RectangleEdge
import org.jfree.util.Rotation

import java.awt.Color

class DashboardController {
    def index(){

    }

    def drawPieChart(List keys, List values, Integer width, Integer height) {

            DefaultPieDataset pieDataset = new DefaultPieDataset();

            keys.eachWithIndex { String data, Integer index ->
                pieDataset.setValue(data, values[index] as Number)
            }

            PiePlot3D plot = new PiePlot3D(pieDataset);

            plot.setDirection(Rotation.CLOCKWISE)
            plot.setStartAngle(90)
            plot.setBackgroundPaint(Color.white)
            plot.setLabelGenerator(new CustomLabelGenerator())  // this class is used for generation of customized labels
            plot.setLabelOutlinePaint(Color.WHITE)
            plot.setLabelFont(new java.awt.Font("SansSerif", Font.BOLD, 10))

            JFreeChart chart = new JFreeChart(plot)
            chart.setBorderVisible(false)
            chart.setBackgroundPaint(Color.white)
            chart.legend.setPosition(RectangleEdge.TOP)

            final ChartRenderingInfo info = new ChartRenderingInfo(new StandardEntityCollection());
            final File file1 = new File("//dash/web-app/images/piechart.png");
            ChartUtilities.saveChartAsPNG(file1, chart, width, height, info);
    }
}
