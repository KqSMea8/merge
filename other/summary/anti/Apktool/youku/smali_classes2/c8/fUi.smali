.class public Lc8/fUi;
.super Ljava/lang/Object;
.source "LBSLocationManagerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/gUi;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/gUi;


# direct methods
.method constructor <init>(Lc8/gUi;)V
    .locals 0
    .param p1, "this$1"    # Lc8/gUi;

    .prologue
    .line 178
    iput-object p1, p0, Lc8/fUi;->this$1:Lc8/gUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lc8/fUi;->this$1:Lc8/gUi;

    iget-object v0, v0, Lc8/gUi;->this$0:Lc8/iUi;

    invoke-static {v0}, Lc8/iUi;->access$600(Lc8/iUi;)V

    .line 182
    return-void
.end method
