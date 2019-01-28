.class public Lc8/Ibp;
.super Landroid/app/Dialog;
.source "YoukuLoading.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Jbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadingDialog"
.end annotation


# instance fields
.field private loading:Lc8/ZZo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    sget v0, Lcom/youku/phone/R$style;->LoadingDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 115
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 128
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    iget-object v0, p0, Lc8/Ibp;->loading:Lc8/ZZo;

    invoke-virtual {v0}, Lc8/ZZo;->stopAnimation()V

    .line 133
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 120
    sget v0, Lcom/youku/phone/R$layout;->loading:I

    invoke-virtual {p0, v0}, Lc8/Ibp;->setContentView(I)V

    .line 121
    sget v0, Lcom/youku/phone/R$id;->newLoading:I

    invoke-virtual {p0, v0}, Lc8/Ibp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/ZZo;

    iput-object v0, p0, Lc8/Ibp;->loading:Lc8/ZZo;

    .line 122
    invoke-virtual {p0}, Lc8/Ibp;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 123
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 138
    iget-object v0, p0, Lc8/Ibp;->loading:Lc8/ZZo;

    invoke-virtual {v0}, Lc8/ZZo;->startAnimation()V

    .line 140
    return-void
.end method
