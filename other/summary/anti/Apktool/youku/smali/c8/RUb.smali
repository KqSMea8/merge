.class public Lc8/RUb;
.super Ljava/lang/Object;
.source "ThreadMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/motu/watch/stack/ThreadMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "$"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;
    }
.end annotation


# instance fields
.field private final _name:Ljava/lang/String;

.field private final _stackTrace:[Ljava/lang/StackTraceElement;


# direct methods
.method private constructor <init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stackTrace"    # [Ljava/lang/StackTraceElement;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lc8/RUb;->_name:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lc8/RUb;->_stackTrace:[Ljava/lang/StackTraceElement;

    .line 34
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;Lc8/SUb;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # [Ljava/lang/StackTraceElement;
    .param p3, "x2"    # Lc8/SUb;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lc8/RUb;-><init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method public static synthetic access$000(Lc8/RUb;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/RUb;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lc8/RUb;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lc8/RUb;)[Ljava/lang/StackTraceElement;
    .locals 1
    .param p0, "x0"    # Lc8/RUb;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lc8/RUb;->_stackTrace:[Ljava/lang/StackTraceElement;

    return-object v0
.end method
