package co.edu.eafit.amadeus.contracts.responses;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.*;
import lombok.experimental.FieldDefaults;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class PreferenciaResponse {

    @JsonProperty("destinos")
    List<DestinoResponse> destinoResponseList;
}
