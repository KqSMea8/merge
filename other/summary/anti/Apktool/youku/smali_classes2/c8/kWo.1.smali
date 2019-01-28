.class public Lc8/kWo;
.super Lc8/Cv;
.source "YKListComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/lWo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/lWo;


# direct methods
.method constructor <init>(Lc8/lWo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/lWo;

    .prologue
    .line 32
    iput-object p1, p0, Lc8/kWo;->this$0:Lc8/lWo;

    invoke-direct {p0}, Lc8/Cv;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lc8/Rv;I)V
    .locals 2
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "newState"    # I

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lc8/Cv;->onScrollStateChanged(Lc8/Rv;I)V

    .line 36
    if-nez p2, :cond_1

    iget-object v0, p0, Lc8/kWo;->this$0:Lc8/lWo;

    invoke-static {v0}, Lc8/lWo;->access$000(Lc8/lWo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lc8/kWo;->this$0:Lc8/lWo;

    const-string/jumbo v1, "scrollstateidle"

    invoke-virtual {v0, v1}, Lc8/lWo;->fireEvent(Ljava/lang/String;)V

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lc8/kWo;->this$0:Lc8/lWo;

    invoke-static {v0}, Lc8/lWo;->access$100(Lc8/lWo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    iget-object v0, p0, Lc8/kWo;->this$0:Lc8/lWo;

    const-string/jumbo v1, "scrollstatedragging"

    invoke-virtual {v0, v1}, Lc8/lWo;->fireEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lc8/kWo;->this$0:Lc8/lWo;

    invoke-static {v0}, Lc8/lWo;->access$200(Lc8/lWo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lc8/kWo;->this$0:Lc8/lWo;

    const-string/jumbo v1, "scrollstatesettling"

    invoke-virtual {v0, v1}, Lc8/lWo;->fireEvent(Ljava/lang/String;)V

    goto :goto_0
.end method
