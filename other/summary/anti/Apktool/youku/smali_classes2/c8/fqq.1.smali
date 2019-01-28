.class public final Lc8/fqq;
.super Ljava/lang/Object;
.source "OnSubscribeOnAssembly.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/eqq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Rlq",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static volatile fullStackTrace:Z


# instance fields
.field final source:Lc8/Rlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Rlq",
            "<TT;>;"
        }
    .end annotation
.end field

.field final stacktrace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc8/Rlq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Rlq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lc8/fqq;, "Lrx/internal/operators/OnSubscribeOnAssembly<TT;>;"
    .local p1, "source":Lc8/Rlq;, "Lrx/Observable$OnSubscribe<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lc8/fqq;->source:Lc8/Rlq;

    .line 43
    invoke-static {}, Lc8/fqq;->createStacktrace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/fqq;->stacktrace:Ljava/lang/String;

    .line 44
    return-void
.end method

.method static createStacktrace()Ljava/lang/String;
    .locals 9

    .prologue
    .line 47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    .line 49
    .local v6, "stes":[Ljava/lang/StackTraceElement;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Assembly trace:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .local v5, "sb":Ljava/lang/StringBuilder;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v3, v6

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 52
    .local v1, "e":Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "row":Ljava/lang/String;
    sget-boolean v7, Lc8/fqq;->fullStackTrace:Z

    if-nez v7, :cond_0

    .line 54
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_1

    .line 57
    const-string/jumbo v7, "RxJavaHooks."

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 60
    const-string/jumbo v7, "OnSubscribeOnAssembly"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 63
    const-string/jumbo v7, ".junit.runner"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 66
    const-string/jumbo v7, ".junit4.runner"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 69
    const-string/jumbo v7, ".junit.internal"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 72
    const-string/jumbo v7, "sun.reflect"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 75
    const-string/jumbo v7, "java.lang.Thread."

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 78
    const-string/jumbo v7, "ThreadPoolExecutor"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 81
    const-string/jumbo v7, "org.apache.catalina."

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 84
    const-string/jumbo v7, "org.apache.tomcat."

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 88
    :cond_0
    const-string/jumbo v7, "\n at "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "e":Ljava/lang/StackTraceElement;
    .end local v4    # "row":Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, "\nOriginal exception:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lc8/fqq;, "Lrx/internal/operators/OnSubscribeOnAssembly<TT;>;"
    .local p1, "t":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lc8/fqq;->source:Lc8/Rlq;

    new-instance v1, Lc8/eqq;

    iget-object v2, p0, Lc8/fqq;->stacktrace:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lc8/eqq;-><init>(Lc8/Omq;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lc8/Rlq;->call(Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lc8/fqq;, "Lrx/internal/operators/OnSubscribeOnAssembly<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/fqq;->call(Lc8/Omq;)V

    return-void
.end method
