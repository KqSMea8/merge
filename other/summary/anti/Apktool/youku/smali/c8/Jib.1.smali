.class public Lc8/Jib;
.super Ljava/lang/Object;
.source "LogoutTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Kib;->asyncExecute([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Kib;


# direct methods
.method constructor <init>(Lc8/Kib;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Kib;

    .prologue
    .line 41
    iput-object p1, p0, Lc8/Jib;->this$0:Lc8/Kib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lc8/Jib;->this$0:Lc8/Kib;

    invoke-static {v0}, Lc8/Kib;->access$000(Lc8/Kib;)Lc8/qib;

    move-result-object v0

    invoke-interface {v0}, Lc8/qib;->onSuccess()V

    .line 46
    return-void
.end method
