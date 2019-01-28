.class public Lc8/aeo;
.super Ljava/lang/Object;
.source "ProgressBarManager.java"


# static fields
.field private static instance:Lc8/aeo;


# instance fields
.field private progressBarRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private createProgressBar(Landroid/content/Context;ILjava/lang/String;)Landroid/app/Dialog;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutRes"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 189
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 190
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v5, 0x0

    invoke-virtual {v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 191
    .local v4, "v":Landroid/view/View;
    sget v5, Lcom/youku/phone/R$id;->dialog_view:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 192
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/16 v6, 0xc8

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 193
    sget v5, Lcom/youku/phone/R$id;->tipTextView:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 194
    .local v3, "tipTextView":Landroid/widget/TextView;
    new-instance v2, Landroid/app/Dialog;

    sget v5, Lcom/youku/phone/R$style;->baseuikit_progress_dialog:I

    invoke-direct {v2, p1, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 195
    .local v2, "loadingDialog":Landroid/app/Dialog;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    invoke-static {p3}, Lc8/abo;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 199
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    :goto_0
    new-instance v5, Lc8/Zdo;

    invoke-direct {v5, p0}, Lc8/Zdo;-><init>(Lc8/aeo;)V

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 210
    invoke-virtual {v2, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 211
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lc8/aeo;->progressBarRef:Ljava/lang/ref/WeakReference;

    .line 213
    return-object v2

    .line 201
    :cond_0
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static getInstance()Lc8/aeo;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lc8/aeo;->instance:Lc8/aeo;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lc8/aeo;

    invoke-direct {v0}, Lc8/aeo;-><init>()V

    sput-object v0, Lc8/aeo;->instance:Lc8/aeo;

    .line 40
    :cond_0
    sget-object v0, Lc8/aeo;->instance:Lc8/aeo;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 171
    :try_start_0
    invoke-virtual {p0}, Lc8/aeo;->getProgressBar()Landroid/app/Dialog;

    move-result-object v1

    .line 172
    .local v1, "progressBar":Landroid/app/Dialog;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 175
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/aeo;->progressBarRef:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v1    # "progressBar":Landroid/app/Dialog;
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getProgressBar()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lc8/aeo;->progressBarRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/aeo;->progressBarRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lc8/aeo;->progressBarRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 128
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProgressBar(Landroid/content/Context;ILjava/lang/String;)Landroid/app/Dialog;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutRes"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3}, Lc8/aeo;->createProgressBar(Landroid/content/Context;ILjava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public getProgressBar(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 139
    sget v0, Lcom/youku/phone/R$layout;->baseuikit_standard_loading_layout:I

    invoke-direct {p0, p1, v0, p2}, Lc8/aeo;->createProgressBar(Landroid/content/Context;ILjava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lc8/aeo;->getProgressBar()Landroid/app/Dialog;

    move-result-object v0

    .line 160
    .local v0, "progressBar":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    const/4 v1, 0x1

    .line 163
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public show(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    :try_start_0
    invoke-virtual {p0}, Lc8/aeo;->getProgressBar()Landroid/app/Dialog;

    move-result-object v1

    .line 51
    .local v1, "progressBar":Landroid/app/Dialog;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 54
    :cond_0
    const-string/jumbo v2, ""

    invoke-virtual {p0, p1, v2}, Lc8/aeo;->getProgressBar(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v1    # "progressBar":Landroid/app/Dialog;
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public show(Landroid/content/Context;IZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textRes"    # I
    .param p3, "isCanCelable"    # Z

    .prologue
    .line 85
    :try_start_0
    invoke-virtual {p0}, Lc8/aeo;->getProgressBar()Landroid/app/Dialog;

    move-result-object v1

    .line 86
    .local v1, "progressBar":Landroid/app/Dialog;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 89
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lc8/aeo;->getProgressBar(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    .line 91
    invoke-virtual {v1, p3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 92
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v1    # "progressBar":Landroid/app/Dialog;
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public show(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 69
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lc8/aeo;->getProgressBar(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    .line 70
    .local v1, "progressBar":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v1    # "progressBar":Landroid/app/Dialog;
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method public show(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "isCancelable"    # Z

    .prologue
    .line 107
    :try_start_0
    invoke-virtual {p0}, Lc8/aeo;->getProgressBar()Landroid/app/Dialog;

    move-result-object v1

    .line 108
    .local v1, "progressBar":Landroid/app/Dialog;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 111
    :cond_0
    invoke-virtual {p0, p1, p2}, Lc8/aeo;->getProgressBar(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    .line 112
    invoke-virtual {v1, p3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 113
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v1    # "progressBar":Landroid/app/Dialog;
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
