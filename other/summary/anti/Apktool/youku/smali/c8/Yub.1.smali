.class public Lc8/Yub;
.super Ljava/lang/Object;
.source "PrefetchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Zub;->onFailed(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Zub;

.field final synthetic val$errorMsg:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Zub;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Zub;

    .prologue
    .line 625
    iput-object p1, p0, Lc8/Yub;->this$0:Lc8/Zub;

    iput-object p2, p0, Lc8/Yub;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lc8/Yub;->val$errorMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 628
    iget-object v0, p0, Lc8/Yub;->this$0:Lc8/Zub;

    invoke-static {v0}, Lc8/Zub;->access$600(Lc8/Zub;)Lc8/Vub;

    move-result-object v0

    iget-object v1, p0, Lc8/Yub;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lc8/Yub;->val$errorMsg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lc8/Vub;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    return-void
.end method
