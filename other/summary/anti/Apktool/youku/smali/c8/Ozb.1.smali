.class public Lc8/Ozb;
.super Ljava/lang/Object;
.source "UTSampleConfBiz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Pzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UTSampleResult"
.end annotation


# instance fields
.field private mIsRuleExist:Z

.field private mResult:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-boolean v0, p0, Lc8/Ozb;->mResult:Z

    .line 151
    iput-boolean v0, p0, Lc8/Ozb;->mIsRuleExist:Z

    return-void
.end method

.method synthetic constructor <init>(Lc8/Mzb;)V
    .locals 0
    .param p1, "x0"    # Lc8/Mzb;

    .prologue
    .line 149
    invoke-direct {p0}, Lc8/Ozb;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lc8/Ozb;->mResult:Z

    return v0
.end method

.method public isRuleExist()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lc8/Ozb;->mIsRuleExist:Z

    return v0
.end method

.method public setIsRuleExist(Z)V
    .locals 0
    .param p1, "aResult"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lc8/Ozb;->mIsRuleExist:Z

    .line 163
    return-void
.end method

.method public setResult(Z)V
    .locals 0
    .param p1, "aResult"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lc8/Ozb;->mResult:Z

    .line 155
    return-void
.end method
