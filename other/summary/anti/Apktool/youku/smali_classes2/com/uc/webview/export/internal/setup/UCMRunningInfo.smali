.class public Lcom/uc/webview/export/internal/setup/UCMRunningInfo;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# instance fields
.field public final appCtx:Landroid/content/Context;

.field public final classLoader:Ljava/lang/ClassLoader;

.field public final coreType:I

.field public final isFirstTimeOdex:Z

.field public final isOldExtraKernel:Z

.field public final shellClassLoader:Ljava/lang/ClassLoader;

.field public final ucMobileWebKit:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

.field public final ucmPackageInfo:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/uc/webview/export/internal/setup/UCMPackageInfo;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;ZZLcom/uc/webview/export/internal/interfaces/UCMobileWebKit;I)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->appCtx:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    .line 27
    iput-object p3, p0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->classLoader:Ljava/lang/ClassLoader;

    .line 28
    iput-object p7, p0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucMobileWebKit:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    .line 29
    iput p8, p0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    .line 30
    iput-boolean p5, p0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isOldExtraKernel:Z

    .line 31
    iput-object p4, p0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->shellClassLoader:Ljava/lang/ClassLoader;

    .line 32
    iput-boolean p6, p0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isFirstTimeOdex:Z

    .line 33
    return-void
.end method
