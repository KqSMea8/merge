.class public Lc8/hEb;
.super Ljava/lang/Object;
.source "UTEvent.java"

# interfaces
.implements Lc8/xEb;


# instance fields
.field public arg1:Ljava/lang/String;

.field public arg2:Ljava/lang/String;

.field public arg3:Ljava/lang/String;

.field public args:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public eventId:I

.field public page:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Lc8/hEb;->page:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lc8/hEb;->eventId:I

    .line 26
    iput-object v1, p0, Lc8/hEb;->arg1:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lc8/hEb;->arg2:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lc8/hEb;->arg3:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lc8/hEb;->args:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lc8/hEb;->args:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 32
    :cond_0
    return-void
.end method

.method public varargs fill([Ljava/lang/Object;)V
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/hEb;->args:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/hEb;->args:Ljava/util/Map;

    .line 39
    :cond_0
    return-void
.end method
