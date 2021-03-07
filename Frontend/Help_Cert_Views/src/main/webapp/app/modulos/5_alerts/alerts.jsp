<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div id="alert-container" class="fixed-alerts fixed-alerts_${location} fixed-alerts_right">
    <div class="alert alert_${method} alert-none alert_fade" data-fade-time="3" style="animation-delay: .2s">
        <div class="alert--icon">
            <i class='bx ${icon}'></i>
        </div>
        <div class="alert--content">
            ${method_message}
        </div>
        <div class="alert--close">
            <i class="bx bx-x-circle close alert_${method}"></i>
        </div>
    </div>
</div>