.class public interface abstract Lc8/fhn;
.super Ljava/lang/Object;
.source "ILogin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/ehn;
    }
.end annotation


# static fields
.field public static final KEY_IS_AUTO_LOGIN:Ljava/lang/String; = "isAutoLogin"

.field public static final KEY_IS_AUTO_LOGOUT:Ljava/lang/String; = "isAutoLogout"


# virtual methods
.method public abstract autoLogin()V
.end method

.method public abstract autoLogout()V
.end method

.method public abstract goLogin(Landroid/content/Context;)V
.end method

.method public abstract goLogin(Landroid/content/Context;I)V
.end method

.method public abstract goLogin(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract goLoginForResult(Landroid/app/Activity;I)V
.end method

.method public abstract goLoginForResult(Landroid/app/Activity;ILjava/lang/String;)V
.end method

.method public abstract goLoginForResult(Landroid/support/v4/app/Fragment;I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract goLoginForResult(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract launchLogoutDialog(Landroid/app/Activity;Lc8/ehn;)V
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;Lc8/ehn;)V
.end method

.method public abstract loginBind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/ehn;)V
.end method

.method public abstract logout()V
.end method

.method public abstract logout(Landroid/os/Bundle;)V
.end method

.method public abstract register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/ehn;)V
.end method

.method public abstract registerPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/ehn;)V
.end method

.method public abstract startAuthActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
