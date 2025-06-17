package com.example.QuickVote.repository;

//public interface OtpRepository {
//}
//package com.example.demo.repository;

//import com.example.demo.entities.Otp;
import com.example.QuickVote.model.Otp;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.Optional;

public interface OtpRepository extends JpaRepository<Otp, Long> {
    Optional<Otp> findByEmail(String email);
}
