.class public Lc8/nSb;
.super Ljava/lang/Object;
.source "CountLimitImpl.java"

# interfaces
.implements Lc8/oSb;


# instance fields
.field typeCount:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/nSb;->typeCount:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public isLimit(Lc8/pSb;)Z
    .locals 1
    .param p1, "adapterBase"    # Lc8/pSb;

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method
