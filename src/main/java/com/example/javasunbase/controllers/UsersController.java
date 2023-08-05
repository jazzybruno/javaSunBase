package com.example.javasunbase.controllers;

import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UsersController {
    @GetMapping("/viewUsers")
    public String viewAllUsers(Model model) {
        // Replace the API URL with the actual URL
        String apiUrl = "https://qa2.sunbasedata.com/sunbase/portal/api/assignment.jsp?cmd=get_customer_list";

        // Replace the actual authorization token
        String authToken = "Bearer dGVzdEBzdW5iYXNlZGF0YS5jb206VGVzdEAxMjM=";

        // Set the authorization header
        HttpHeaders headers = new HttpHeaders();
        headers.set("Authorization", authToken);

        // Create a RestTemplate to make the GET request
        RestTemplate restTemplate = new RestTemplate();

        // Make the GET request to the API
        ResponseEntity<Object[]> response = restTemplate.exchange(apiUrl, HttpMethod.GET, null, Object[].class);

        // Get the user data from the API response
        Object[] users = response.getBody();

        // Add the users to the model
        model.addAttribute("users", users);

        return "view-users";
    }

    @GetMapping("/auth")
    public String authenticateUserView(){
     return "user-login";
    }

    @PostMapping("/auth")
    public String authenticateUser(@RequestParam("login_id") String loginId,
                                   @RequestParam("password") String password,
                                   Model model) {

        // Replace with the actual URL
        String apiUrl = "https://qa2.sunbasedata.com/sunbase/portal/api/assignment_auth.jsp";

        // Set the request body
        MultiValueMap<String, String> requestBody = new LinkedMultiValueMap<>();
        requestBody.add("login_id", loginId);
        requestBody.add("password", password);

        // Set the request headers
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);

        // Create the HTTP entity with the request body and headers
        HttpEntity<MultiValueMap<String, String>> requestEntity = new HttpEntity<>(requestBody, headers);

        // Create a RestTemplate to make the POST request
        RestTemplate restTemplate = new RestTemplate();

        // Make the POST request to the API
        ResponseEntity<String> response = restTemplate.exchange(apiUrl, HttpMethod.POST, requestEntity, String.class);

        // Get the response body
        String responseBody = response.getBody();

        // Assuming the response body contains the authentication result
        // You can handle the response as per your application's requirements
        model.addAttribute("authResult", responseBody);

        return "view-users";
    }

    @GetMapping("/create")
    public String createUser(Model model){
       try {
           System.out.println("This is the controller");
           return "create-user";
       }catch (Exception e){
           e.printStackTrace();
           return  null;
       }
    }

    @PostMapping("/delete")
    public String deleteUser(Model model){
        return "view-users";
    }

    @PostMapping("/update")
    public String updateUser(Model model){
        return "view-users";
    }
}
