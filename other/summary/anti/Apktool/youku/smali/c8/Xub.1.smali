.class public Lc8/Xub;
.super Ljava/lang/Object;
.source "PrefetchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Zub;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Zub;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Zub;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Zub;

    .prologue
    .line 612
    iput-object p1, p0, Lc8/Xub;->this$0:Lc8/Zub;

    iput-object p2, p0, Lc8/Xub;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lc8/Xub;->this$0:Lc8/Zub;

    invoke-static {v0}, Lc8/Zub;->access$600(Lc8/Zub;)Lc8/Vub;

    move-result-object v0

    iget-object v1, p0, Lc8/Xub;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lc8/Vub;->onSuccess(Ljava/lang/String;)V

    .line 616
    return-void
.end method
