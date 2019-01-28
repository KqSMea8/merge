.class public Lc8/Okk;
.super Ljava/lang/Object;
.source "StillsCardInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Pkk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StillsCardData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Mkk;,
        Lc8/Nkk;
    }
.end annotation


# instance fields
.field private pageInfo:Lc8/Mkk;

.field private stillInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Nkk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lc8/Mkk;

    invoke-direct {v0, p0}, Lc8/Mkk;-><init>(Lc8/Okk;)V

    iput-object v0, p0, Lc8/Okk;->pageInfo:Lc8/Mkk;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Okk;->stillInfos:Ljava/util/List;

    .line 228
    return-void
.end method
