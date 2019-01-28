.class public Lc8/EB;
.super Ljava/lang/Object;
.source "WVCommonConfigData.java"


# instance fields
.field public cookieUrlRule:Ljava/lang/String;

.field public customsComboLimit:I

.field public customsDirectQueryLimit:I

.field public excludeUCVersions:Ljava/lang/String;

.field public isAutoRegisterApp:Z

.field public isCheckCleanup:Z

.field public isOpenCombo:Z

.field public isUseAliNetworkDelegate:Z

.field public isUseTBDownloader:Z

.field public monitorStatus:I

.field public needZipDegrade:Z

.field public packageAccessInterval:I

.field public packageAppStatus:I

.field public packageDownloadLimit:I

.field public packageMaxAppCount:I

.field public packagePriorityWeight:D

.field public packageRemoveInterval:I

.field public packageZipPrefix:Ljava/lang/String;

.field public packageZipPreviewPrefix:Ljava/lang/String;

.field public recoveryInterval:I

.field public shareBlankList:Ljava/lang/String;

.field public ucCoreUrl:Ljava/lang/String;

.field public ucParam:Ljava/lang/String;

.field public ucSkipOldKernel:Z

.field public ucsdk_alinetwork_rate:D

.field public ucsdk_image_strategy_rate:D

.field public updateInterval:J

.field public urlRuleStatus:I

.field public urlScheme:Ljava/lang/String;

.field public useSystemWebView:Z

.field public v:Ljava/lang/String;

.field public verifySampleRate:Ljava/lang/String;

.field public zipDegradeList:Ljava/lang/String;

.field public zipDegradeMode:I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const v5, 0x19bfcc00

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lc8/EB;->v:Ljava/lang/String;

    .line 8
    const-wide v0, 0x3fb999999999999aL    # 0.1

    iput-wide v0, p0, Lc8/EB;->packagePriorityWeight:D

    .line 9
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lc8/EB;->updateInterval:J

    .line 10
    iput v4, p0, Lc8/EB;->packageAppStatus:I

    .line 11
    iput v4, p0, Lc8/EB;->monitorStatus:I

    .line 12
    iput v4, p0, Lc8/EB;->urlRuleStatus:I

    .line 13
    const-string/jumbo v0, "http"

    iput-object v0, p0, Lc8/EB;->urlScheme:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/EB;->verifySampleRate:Ljava/lang/String;

    .line 15
    iput-wide v6, p0, Lc8/EB;->ucsdk_alinetwork_rate:D

    .line 16
    iput-wide v6, p0, Lc8/EB;->ucsdk_image_strategy_rate:D

    .line 17
    iput-boolean v3, p0, Lc8/EB;->useSystemWebView:Z

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/EB;->cookieUrlRule:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/EB;->ucCoreUrl:Ljava/lang/String;

    .line 20
    iput-boolean v2, p0, Lc8/EB;->isOpenCombo:Z

    .line 21
    iput-boolean v2, p0, Lc8/EB;->isCheckCleanup:Z

    .line 22
    const-string/jumbo v0, "skip_old_extra_kernel=true"

    iput-object v0, p0, Lc8/EB;->ucParam:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/EB;->shareBlankList:Ljava/lang/String;

    .line 24
    const/16 v0, 0x1e

    iput v0, p0, Lc8/EB;->packageDownloadLimit:I

    .line 25
    const/16 v0, 0xbb8

    iput v0, p0, Lc8/EB;->packageAccessInterval:I

    .line 26
    iput v5, p0, Lc8/EB;->packageRemoveInterval:I

    .line 27
    iput v5, p0, Lc8/EB;->recoveryInterval:I

    .line 28
    const/16 v0, 0xa

    iput v0, p0, Lc8/EB;->customsDirectQueryLimit:I

    .line 29
    const/4 v0, 0x3

    iput v0, p0, Lc8/EB;->customsComboLimit:I

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/EB;->packageZipPrefix:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/EB;->packageZipPreviewPrefix:Ljava/lang/String;

    .line 32
    iput-boolean v3, p0, Lc8/EB;->isAutoRegisterApp:Z

    .line 33
    iput-boolean v2, p0, Lc8/EB;->isUseTBDownloader:Z

    .line 34
    iput-boolean v2, p0, Lc8/EB;->isUseAliNetworkDelegate:Z

    .line 35
    const-string/jumbo v0, "1.12.11.0, 1.15.15.0, 1.14.13.0, 1.13.12.0"

    iput-object v0, p0, Lc8/EB;->excludeUCVersions:Ljava/lang/String;

    .line 36
    const/16 v0, 0x64

    iput v0, p0, Lc8/EB;->packageMaxAppCount:I

    .line 37
    iput v3, p0, Lc8/EB;->zipDegradeMode:I

    .line 38
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/EB;->zipDegradeList:Ljava/lang/String;

    .line 39
    iput-boolean v2, p0, Lc8/EB;->ucSkipOldKernel:Z

    .line 41
    iput-boolean v3, p0, Lc8/EB;->needZipDegrade:Z

    return-void
.end method
