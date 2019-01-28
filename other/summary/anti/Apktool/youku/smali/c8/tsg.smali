.class public abstract Lc8/tsg;
.super Ljava/lang/Object;
.source "UploaderEnvironment.java"

# interfaces
.implements Lc8/lsg;


# instance fields
.field private final instanceType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "instanceType"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lc8/tsg;->instanceType:I

    .line 15
    return-void
.end method


# virtual methods
.method public final getAppKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0}, Lc8/tsg;->getCurrentElement()Lc8/gsg;

    move-result-object v0

    iget-object v0, v0, Lc8/gsg;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentElement()Lc8/gsg;
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lc8/tsg;->getEnvironment()I

    move-result v0

    invoke-virtual {p0}, Lc8/tsg;->getInstanceType()I

    move-result v1

    invoke-static {v0, v1}, Lc8/vsg;->getElement(II)Lc8/gsg;

    move-result-object v0

    return-object v0
.end method

.method public final getDomain()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lc8/tsg;->getCurrentElement()Lc8/gsg;

    move-result-object v0

    iget-object v0, v0, Lc8/gsg;->host:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getEnvironment()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public final getInstanceType()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lc8/tsg;->instanceType:I

    return v0
.end method
