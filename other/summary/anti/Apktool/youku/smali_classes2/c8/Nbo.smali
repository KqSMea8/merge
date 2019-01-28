.class public Lc8/Nbo;
.super Ljava/lang/Object;
.source "ToastHelper.java"


# static fields
.field private static toastRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static genToast(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/Toast;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "txt"    # Ljava/lang/String;
    .param p2, "gravity"    # I
    .param p3, "hMargin"    # I
    .param p4, "vMargin"    # I

    .prologue
    .line 74
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 75
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v4, Lcom/youku/phone/R$layout;->baseuikit_toast_text:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 76
    .local v3, "view":Landroid/view/View;
    sget v4, Lcom/youku/phone/R$id;->toast_content:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 77
    .local v0, "contentTxt":Landroid/widget/TextView;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 78
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_0
    new-instance v2, Landroid/widget/Toast;

    invoke-direct {v2, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 81
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 82
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 83
    invoke-virtual {v2, p2, p3, p4}, Landroid/widget/Toast;->setGravity(III)V

    .line 84
    return-object v2
.end method

.method private static handleShowTipsEvents(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "txt"    # Ljava/lang/String;
    .param p2, "gravity"    # I
    .param p3, "hMargin"    # I
    .param p4, "vMargin"    # I

    .prologue
    .line 52
    :try_start_0
    sget-object v2, Lc8/Nbo;->toastRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    sget-object v2, Lc8/Nbo;->toastRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 53
    sget-object v2, Lc8/Nbo;->toastRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 55
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lc8/Nbo;->genToast(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/Toast;

    move-result-object v1

    .line 56
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 57
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lc8/Nbo;->toastRef:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v1    # "toast":Landroid/widget/Toast;
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static showBottomTips(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$dimen;->toast_text_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 44
    .local v0, "vMargin":F
    const/16 v1, 0x51

    const/4 v2, 0x0

    float-to-int v3, v0

    invoke-static {p0, p1, v1, v2, v3}, Lc8/Nbo;->handleShowTipsEvents(Landroid/content/Context;Ljava/lang/String;III)V

    .line 45
    return-void
.end method

.method public static showCenterTips(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 33
    const/16 v0, 0x11

    invoke-static {p0, p1, v0, v1, v1}, Lc8/Nbo;->handleShowTipsEvents(Landroid/content/Context;Ljava/lang/String;III)V

    .line 34
    return-void
.end method
