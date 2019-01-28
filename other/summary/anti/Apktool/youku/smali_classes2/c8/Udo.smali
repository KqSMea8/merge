.class public Lc8/Udo;
.super Landroid/app/Dialog;
.source "YoukuCircleLoading.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Vdo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadingDialog"
.end annotation


# instance fields
.field private loading:Lc8/deo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    sget v0, Lcom/youku/phone/R$style;->baseuikit_CircleLoadingDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 114
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 127
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    iget-object v0, p0, Lc8/Udo;->loading:Lc8/deo;

    invoke-virtual {v0}, Lc8/deo;->stopAnimation()V

    .line 132
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 119
    sget v0, Lcom/youku/phone/R$layout;->baseuikit_new_loading:I

    invoke-virtual {p0, v0}, Lc8/Udo;->setContentView(I)V

    .line 120
    sget v0, Lcom/youku/phone/R$id;->circle_newLoading:I

    invoke-virtual {p0, v0}, Lc8/Udo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/deo;

    iput-object v0, p0, Lc8/Udo;->loading:Lc8/deo;

    .line 121
    invoke-virtual {p0}, Lc8/Udo;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 122
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 137
    iget-object v0, p0, Lc8/Udo;->loading:Lc8/deo;

    invoke-virtual {v0}, Lc8/deo;->startAnimation()V

    .line 139
    return-void
.end method
