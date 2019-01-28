.class public final Lc8/kZb;
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
    name = "TagSelectorLsn"
.end annotation


# instance fields
.field private final mWindow:Lc8/IZb;

.field final synthetic this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;


# direct methods
.method public constructor <init>(Lcom/alibaba/poplayerconsole/PopLayerConsole;Lc8/IZb;)V
    .locals 0
    .param p2, "window"    # Lc8/IZb;

    .prologue
    .line 554
    iput-object p1, p0, Lc8/kZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    iput-object p2, p0, Lc8/kZb;->mWindow:Lc8/IZb;

    .line 556
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 560
    packed-switch p2, :pswitch_data_0

    .line 580
    :goto_0
    iget-object v0, p0, Lc8/kZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    iget-object v1, p0, Lc8/kZb;->mWindow:Lc8/IZb;

    invoke-static {v0, v1}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->access$200(Lcom/alibaba/poplayerconsole/PopLayerConsole;Lc8/IZb;)V

    .line 581
    return-void

    .line 562
    :pswitch_0
    iget-object v0, p0, Lc8/kZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    invoke-static {v0}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->access$900(Lcom/alibaba/poplayerconsole/PopLayerConsole;)Lc8/jZb;

    move-result-object v0

    const-string/jumbo v1, "All"

    invoke-static {v0, v1}, Lc8/jZb;->access$702(Lc8/jZb;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 566
    :pswitch_1
    iget-object v0, p0, Lc8/kZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    invoke-static {v0}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->access$900(Lcom/alibaba/poplayerconsole/PopLayerConsole;)Lc8/jZb;

    move-result-object v0

    const-string/jumbo v1, "Out-Console"

    invoke-static {v0, v1}, Lc8/jZb;->access$702(Lc8/jZb;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 570
    :pswitch_2
    iget-object v0, p0, Lc8/kZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    invoke-static {v0}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->access$900(Lcom/alibaba/poplayerconsole/PopLayerConsole;)Lc8/jZb;

    move-result-object v0

    const-string/jumbo v1, "WindVane"

    invoke-static {v0, v1}, Lc8/jZb;->access$702(Lc8/jZb;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 574
    :pswitch_3
    iget-object v0, p0, Lc8/kZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    invoke-static {v0}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->access$900(Lcom/alibaba/poplayerconsole/PopLayerConsole;)Lc8/jZb;

    move-result-object v0

    const-string/jumbo v1, "PopLayer"

    invoke-static {v0, v1}, Lc8/jZb;->access$702(Lc8/jZb;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 560
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
