<form id="feedbackForm" action="/submit-feedback" method="POST">
    @csrf

    <div class="row mb-3">
        <div class="col-md-6">
            <label for="username" class="form-label">Username:</label>
            <input type="text" id="username" name="username" class="form-control" required pattern="[A-Za-z0-9]+" title="Only letters and numbers" placeholder="Enter your username here">
            <div class="invalid-feedback d-block" id="usernameError"></div>
        </div>

        <div class="col-md-6">
            <label for="email" class="form-label">Email:</label>
            <input type="email" id="email" name="email" class="form-control" required placeholder="Enter your email here">
            <div class="invalid-feedback d-block" id="emailError"></div>
        </div>
    </div>

    <div class="mb-3">
        <label for="feedback" class="form-label">Your feedback:</label>
        <textarea id="feedback" name="feedback" class="form-control" rows="4" required placeholder="Enter your feedback here"></textarea>
        <div class="invalid-feedback d-block" id="feedbackError"></div>
    </div>

    <div class="mb-3">
        <label for="captcha" class="form-label">Captcha:</label>
        <div class="captcha input-group mb-3">
            <div class="input-group-text" style="height: 50px; width: 180px;">
                <span>{!! captcha_img('flat') !!}</span>
            </div>
            <button type="button" class="btn btn-outline-danger" id="reload">&#x21bb;</button>
            <input type="text" class="form-control" placeholder="Enter Captcha here" name="captcha">
        </div>
        <div class="invalid-feedback d-block" id="captchaError"></div>
    </div>

    <button type="submit" class="btn btn-primary">Send</button>
</form>
