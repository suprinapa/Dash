package dash

import org.jfree.chart.labels.PieSectionLabelGenerator
import org.jfree.data.general.PieDataset

import java.text.AttributedString

/**
 * Created by IntelliJ IDEA.
 * User: supri
 * Date: 5/17/2022
 * Time: 12:19 PM
 */
class CustomLabelGenerator implements PieSectionLabelGenerator {
    @Override
    String generateSectionLabel(PieDataset pieDataset, Comparable comparable) {
        String temp = null
        if (pieDataset != null) {
            temp = pieDataset.getValue(key).toString() + "%"
        }
        return temp
    }

    @Override
    AttributedString generateAttributedSectionLabel(PieDataset pieDataset, Comparable comparable) {
        return null
    }
}
