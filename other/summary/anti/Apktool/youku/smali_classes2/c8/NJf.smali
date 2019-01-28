.class public final Lc8/NJf;
.super Ljava/lang/Object;
.source "MsgEnvironment.java"

# interfaces
.implements Lc8/OJf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/PJf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public returnHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public returnToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public returnUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const-string/jumbo v0, ""

    return-object v0
.end method
