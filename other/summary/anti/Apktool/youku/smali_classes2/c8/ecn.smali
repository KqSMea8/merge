.class public Lc8/ecn;
.super Ljava/lang/Object;
.source "WidgetUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;I)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # I

    .prologue
    .line 22
    invoke-static {p0, p1}, Lc8/ecn;->startAppPermissionSettings(Landroid/app/Activity;I)V

    return-void
.end method

.method static getDialog(Landroid/app/Activity;Ljava/lang/String;ILc8/Ybn;)Landroid/app/Dialog;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "rational"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "onCanceledListener"    # Lc8/Ybn;

    .prologue
    .line 43
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lc8/ecn;->getTipsDialog(Landroid/app/Activity;Ljava/lang/String;ILc8/Ybn;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 67
    .local v0, "d":Landroid/app/Dialog;
    :goto_0
    return-object v0

    .line 45
    .end local v0    # "d":Landroid/app/Dialog;
    :catch_0
    move-exception v1

    :goto_1
    new-instance v1, Lc8/On;

    invoke-direct {v1, p0}, Lc8/On;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {v1, p1}, Lc8/On;->setMessage(Ljava/lang/CharSequence;)Lc8/On;

    move-result-object v1

    const-string/jumbo v2, "\u53bb\u8bbe\u7f6e"

    new-instance v3, Lc8/ccn;

    invoke-direct {v3, p0, p2}, Lc8/ccn;-><init>(Landroid/app/Activity;I)V

    .line 47
    invoke-virtual {v1, v2, v3}, Lc8/On;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lc8/On;

    move-result-object v1

    const-string/jumbo v2, "\u53d6\u6d88"

    new-instance v3, Lc8/bcn;

    invoke-direct {v3, p3}, Lc8/bcn;-><init>(Lc8/Ybn;)V

    .line 55
    invoke-virtual {v1, v2, v3}, Lc8/On;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lc8/On;

    move-result-object v1

    const/4 v2, 0x0

    .line 64
    invoke-virtual {v1, v2}, Lc8/On;->setCancelable(Z)Lc8/On;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lc8/On;->show()Lc8/Pn;

    move-result-object v0

    .restart local v0    # "d":Landroid/app/Dialog;
    goto :goto_0

    .line 45
    .end local v0    # "d":Landroid/app/Dialog;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static getTipsDialog(Landroid/app/Activity;Ljava/lang/String;ILc8/Ybn;)Landroid/app/Dialog;
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "rational"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "onCanceledListener"    # Lc8/Ybn;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lc8/dcn;

    const-string/jumbo v3, "\u53bb\u8bbe\u7f6e"

    const-string/jumbo v4, "\u53d6\u6d88"

    move-object v1, p0

    move-object v2, p1

    move-object v5, p0

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lc8/dcn;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;ILc8/Ybn;)V

    .line 88
    .local v0, "dialog":Lc8/Bap;
    invoke-virtual {v0}, Lc8/Bap;->show()V

    .line 89
    return-object v0
.end method

.method private static startAppPermissionSettings(Landroid/app/Activity;I)V
    .locals 3
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I

    .prologue
    .line 28
    :try_start_0
    invoke-static {}, Lc8/Tbn;->isVivo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    invoke-static {p0}, Lc8/acn;->vivo(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 33
    .local v1, "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 37
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 31
    :cond_0
    invoke-static {p0}, Lc8/acn;->common(Landroid/content/Context;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 34
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
