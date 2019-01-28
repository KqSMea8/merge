.class public Lc8/dUb;
.super Ljava/lang/Object;
.source "UTRestPostKVPair.java"


# instance fields
.field mKey:Ljava/lang/String;

.field mValue:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lc8/dUb;->mValue:[B

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lc8/dUb;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "aKey"    # Ljava/lang/String;

    .prologue
    .line 8
    iput-object p1, p0, Lc8/dUb;->mKey:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public setValue([B)V
    .locals 0
    .param p1, "aData"    # [B

    .prologue
    .line 16
    iput-object p1, p0, Lc8/dUb;->mValue:[B

    .line 17
    return-void
.end method
