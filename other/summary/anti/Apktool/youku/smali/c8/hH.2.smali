.class public Lc8/hH;
.super Landroid/app/Activity;
.source "PermissionActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# static fields
.field private static final OVERLAY_PERMISSION_REQ_CODE:I = 0x7b

.field private static final PERMISSION_REQUEST:I = 0x0

.field public static final TAG:Ljava/lang/String; = "PermissionActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private requestCustomPermission([Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "explain"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 77
    invoke-direct {p0, p1}, Lc8/hH;->shouldShowRequestPermissionRationale([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "\u6211\u77e5\u9053\u4e86"

    new-instance v3, Lc8/gH;

    invoke-direct {v3, p0, p1}, Lc8/gH;-><init>(Lc8/hH;[Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 89
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 94
    .end local v0    # "dialog":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-static {p0, p1, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private shouldShowRequestPermissionRationale([Ljava/lang/String;)Z
    .locals 5
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 97
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, p1

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 98
    .local v3, "permission":Ljava/lang/String;
    invoke-static {p0, v3}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    const/4 v4, 0x1

    .line 103
    .end local v3    # "permission":Ljava/lang/String;
    :goto_1
    return v4

    .line 97
    .restart local v3    # "permission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v3    # "permission":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 65
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 66
    const/16 v0, 0x7b

    if-ne p1, v0, :cond_0

    .line 67
    invoke-static {p1, p2, p3}, Lc8/jH;->onActivityResult(IILandroid/content/Intent;)V

    .line 69
    :cond_0
    invoke-virtual {p0}, Lc8/hH;->finish()V

    .line 70
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    invoke-virtual {p0, v1}, Lc8/hH;->setContentView(Landroid/view/View;)V

    .line 35
    invoke-virtual {p0}, Lc8/hH;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "permissions"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, "permissions":[Ljava/lang/String;
    invoke-virtual {p0}, Lc8/hH;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "explain"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "explain":Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string/jumbo v5, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lc8/hH;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 39
    .local v2, "intent":Landroid/content/Intent;
    const/16 v4, 0x7b

    invoke-virtual {p0, v2, v4}, Lc8/hH;->startActivityForResult(Landroid/content/Intent;I)V

    .line 43
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 41
    :cond_0
    invoke-direct {p0, v3, v0}, Lc8/hH;->requestCustomPermission([Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "explain":Ljava/lang/String;
    .end local v3    # "permissions":[Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 48
    invoke-static {p1, p2, p3}, Lc8/jH;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lc8/hH;->finish()V

    .line 51
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 61
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 56
    return-void
.end method
