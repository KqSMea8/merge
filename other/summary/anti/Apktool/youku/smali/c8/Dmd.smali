.class public Lc8/Dmd;
.super Ljava/lang/Object;
.source "MapFactories.java"

# interfaces
.implements Lc8/Emd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Fmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultMapFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/Cmd;)V
    .locals 0
    .param p1, "x0"    # Lc8/Cmd;

    .prologue
    .line 56
    invoke-direct {p0}, Lc8/Dmd;-><init>()V

    return-void
.end method


# virtual methods
.method public forMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "oldMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-nez p1, :cond_0

    .line 59
    new-instance p1, Ljava/util/HashMap;

    .end local p1    # "oldMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 61
    :cond_0
    return-object p1
.end method
