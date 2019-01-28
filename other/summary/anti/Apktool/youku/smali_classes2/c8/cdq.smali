.class public Lc8/cdq;
.super Ljava/lang/Object;
.source "WebSocketServer.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ddq;-><init>(Lc8/edq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/ddq;

.field final synthetic val$this$0:Lc8/edq;


# direct methods
.method constructor <init>(Lc8/ddq;Lc8/edq;)V
    .locals 0
    .param p1, "this$1"    # Lc8/ddq;

    .prologue
    .line 680
    iput-object p1, p0, Lc8/cdq;->this$1:Lc8/ddq;

    iput-object p2, p0, Lc8/cdq;->val$this$0:Lc8/edq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 683
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 684
    return-void
.end method
