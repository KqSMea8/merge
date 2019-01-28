.class public final Lc8/hZb;
.super Ljava/lang/Object;
.source "PopLayerConsole.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/poplayerconsole/PopLayerConsole;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DomainSelectorLsn"
.end annotation


# instance fields
.field private final mWindow:Lc8/IZb;

.field final synthetic this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;


# direct methods
.method public constructor <init>(Lcom/alibaba/poplayerconsole/PopLayerConsole;Lc8/IZb;)V
    .locals 0
    .param p2, "w"    # Lc8/IZb;

    .prologue
    .line 517
    iput-object p1, p0, Lc8/hZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    iput-object p2, p0, Lc8/hZb;->mWindow:Lc8/IZb;

    .line 519
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 523
    packed-switch p2, :pswitch_data_0

    .line 538
    :goto_0
    iget-object v2, p0, Lc8/hZb;->mWindow:Lc8/IZb;

    sget v3, Lcom/youku/phone/R$id;->current_domain:I

    invoke-virtual {v2, v3}, Lc8/IZb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 539
    .local v0, "currentDomain":Landroid/widget/TextView;
    iget-object v2, p0, Lc8/hZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    invoke-static {v2}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->access$900(Lcom/alibaba/poplayerconsole/PopLayerConsole;)Lc8/jZb;

    move-result-object v2

    invoke-static {v2}, Lc8/jZb;->access$600(Lc8/jZb;)I

    move-result v2

    invoke-static {v2}, Lc8/ZWb;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v2, p0, Lc8/hZb;->mWindow:Lc8/IZb;

    sget v3, Lcom/youku/phone/R$id;->domain_info:I

    invoke-virtual {v2, v3}, Lc8/IZb;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 541
    .local v1, "domainInfo":Landroid/widget/TextView;
    iget-object v2, p0, Lc8/hZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    invoke-static {v2}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->access$900(Lcom/alibaba/poplayerconsole/PopLayerConsole;)Lc8/jZb;

    move-result-object v2

    invoke-static {v2}, Lc8/jZb;->access$600(Lc8/jZb;)I

    move-result v2

    if-gez v2, :cond_1

    .line 542
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 543
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 548
    :cond_0
    :goto_1
    return-void

    .line 525
    .end local v0    # "currentDomain":Landroid/widget/TextView;
    .end local v1    # "domainInfo":Landroid/widget/TextView;
    :pswitch_0
    iget-object v2, p0, Lc8/hZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    invoke-static {v2}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->access$900(Lcom/alibaba/poplayerconsole/PopLayerConsole;)Lc8/jZb;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lc8/jZb;->access$602(Lc8/jZb;I)I

    goto :goto_0

    .line 528
    :pswitch_1
    iget-object v2, p0, Lc8/hZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    invoke-static {v2}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->access$900(Lcom/alibaba/poplayerconsole/PopLayerConsole;)Lc8/jZb;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lc8/jZb;->access$602(Lc8/jZb;I)I

    goto :goto_0

    .line 531
    :pswitch_2
    iget-object v2, p0, Lc8/hZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    invoke-static {v2}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->access$900(Lcom/alibaba/poplayerconsole/PopLayerConsole;)Lc8/jZb;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lc8/jZb;->access$602(Lc8/jZb;I)I

    goto :goto_0

    .line 534
    :pswitch_3
    iget-object v2, p0, Lc8/hZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    invoke-static {v2}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->access$900(Lcom/alibaba/poplayerconsole/PopLayerConsole;)Lc8/jZb;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lc8/jZb;->access$602(Lc8/jZb;I)I

    goto :goto_0

    .line 544
    .restart local v0    # "currentDomain":Landroid/widget/TextView;
    .restart local v1    # "domainInfo":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 545
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 546
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 523
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
