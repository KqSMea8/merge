.class public Lc8/Jkk;
.super Ljava/lang/Object;
.source "SideslipContentInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ikk;
    }
.end annotation


# instance fields
.field public cornerArrowJump:Lc8/Ikk;

.field public cornerText:Ljava/lang/String;

.field public mSideSlipContentType:Z

.field public sideslipContentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Hkk;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lc8/Ikk;

    invoke-direct {v0, p0}, Lc8/Ikk;-><init>(Lc8/Jkk;)V

    iput-object v0, p0, Lc8/Jkk;->cornerArrowJump:Lc8/Ikk;

    .line 19
    return-void
.end method
