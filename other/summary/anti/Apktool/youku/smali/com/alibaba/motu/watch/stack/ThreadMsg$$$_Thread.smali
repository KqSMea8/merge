.class public Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;
.super Ljava/lang/Throwable;
.source "ThreadMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/RUb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_Thread"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/RUb;


# direct methods
.method private constructor <init>(Lc8/RUb;Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;)V
    .locals 1
    .param p2, "other"    # Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;->this$0:Lc8/RUb;

    .line 21
    invoke-static {p1}, Lc8/RUb;->access$000(Lc8/RUb;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lc8/RUb;Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;Lc8/SUb;)V
    .locals 0
    .param p1, "x0"    # Lc8/RUb;
    .param p2, "x1"    # Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;
    .param p3, "x2"    # Lc8/SUb;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;-><init>(Lc8/RUb;Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;)V

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;->this$0:Lc8/RUb;

    invoke-static {v0}, Lc8/RUb;->access$100(Lc8/RUb;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 27
    return-object p0
.end method
