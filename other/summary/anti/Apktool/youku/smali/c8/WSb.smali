.class public Lc8/WSb;
.super Ljava/lang/Object;
.source "MotuCrashReporter.java"

# interfaces
.implements Lc8/JSb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/XSb;->setCrashCaughtListener(Lc8/SSb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/XSb;

.field final synthetic val$listener:Lc8/SSb;


# direct methods
.method constructor <init>(Lc8/XSb;Lc8/SSb;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lc8/WSb;->this$0:Lc8/XSb;

    iput-object p2, p0, Lc8/WSb;->val$listener:Lc8/SSb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/util/Map;
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lc8/WSb;->val$listener:Lc8/SSb;

    invoke-interface {v0, p1, p2}, Lc8/SSb;->onCrashCaught(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public originalEquals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 50
    iget-object v0, p0, Lc8/WSb;->val$listener:Lc8/SSb;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lc8/WSb;->val$listener:Lc8/SSb;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
