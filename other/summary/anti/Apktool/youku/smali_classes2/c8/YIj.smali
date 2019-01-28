.class public Lc8/YIj;
.super Ljava/lang/Object;
.source "YKNetwork.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/cJj;->asyncCall(Lc8/OIj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/cJj;

.field final synthetic val$callback:Lc8/OIj;


# direct methods
.method constructor <init>(Lc8/cJj;Lc8/OIj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/cJj;

    .prologue
    .line 87
    iput-object p1, p0, Lc8/YIj;->this$0:Lc8/cJj;

    iput-object p2, p0, Lc8/YIj;->val$callback:Lc8/OIj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lc8/YIj;->this$0:Lc8/cJj;

    invoke-virtual {v0}, Lc8/cJj;->checkSDKInit()V

    .line 91
    iget-object v0, p0, Lc8/YIj;->this$0:Lc8/cJj;

    invoke-static {v0}, Lc8/cJj;->access$000(Lc8/cJj;)Lc8/tJj;

    move-result-object v0

    iget-object v1, p0, Lc8/YIj;->val$callback:Lc8/OIj;

    invoke-virtual {v0, v1}, Lc8/tJj;->asyncCall(Lc8/OIj;)V

    .line 92
    return-void
.end method
