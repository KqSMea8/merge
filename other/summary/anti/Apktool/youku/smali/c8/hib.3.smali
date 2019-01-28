.class public interface abstract Lc8/hib;
.super Ljava/lang/Object;
.source "LoginService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "login"


# virtual methods
.method public abstract auth(Landroid/app/Activity;Lc8/xgb;)V
.end method

.method public abstract auth(Lc8/xgb;)V
.end method

.method public abstract checkSessionValid()Z
.end method

.method public abstract getSession()Lc8/ahb;
.end method

.method public abstract isLoginUrl(Ljava/lang/String;)Z
.end method

.method public abstract isLogoutUrl(Ljava/lang/String;)Z
.end method

.method public abstract logout(Landroid/app/Activity;Lc8/qib;)V
.end method

.method public abstract logout(Lc8/qib;)V
.end method

.method public abstract refreshCookie(Lc8/ugb;)V
.end method

.method public abstract setLoginCallback(Lc8/xgb;)V
.end method

.method public abstract setWebViewProxy(Lc8/tgb;)V
.end method

.method public abstract showQrCodeLogin(Ljava/util/Map;Lc8/xgb;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lc8/xgb;",
            ")V"
        }
    .end annotation
.end method
