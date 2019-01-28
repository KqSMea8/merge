.class public Lc8/dZo;
.super Lc8/Bap;
.source "DLMemberCacheTipDialog.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0, v0, v0}, Lc8/dZo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tips"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0, v0}, Lc8/Bap;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tips"    # Ljava/lang/String;
    .param p3, "positiveText"    # Ljava/lang/String;
    .param p4, "negativeText"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0, v0, v0}, Lc8/Bap;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lc8/dZo;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method protected onPositiveButtonClicked()V
    .locals 3

    .prologue
    .line 42
    :try_start_0
    iget-object v1, p0, Lc8/dZo;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 43
    const-class v1, Lc8/Xgn;

    invoke-static {v1}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Xgn;

    iget-object v2, p0, Lc8/dZo;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-interface {v1, v2}, Lc8/Xgn;->goVipProductPayActivity(Landroid/app/Activity;)V

    .line 45
    :cond_0
    invoke-virtual {p0}, Lc8/dZo;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
