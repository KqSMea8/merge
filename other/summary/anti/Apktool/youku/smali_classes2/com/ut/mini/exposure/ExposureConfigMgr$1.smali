.class public final Lcom/ut/mini/exposure/ExposureConfigMgr$1;
.super Ljava/lang/Object;
.source "ExposureConfigMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ut/mini/exposure/ExposureConfigMgr;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 41
    invoke-static {}, Lcom/ut/mini/exposure/ExposureConfigMgr;->updateExposureConfig()V

    .line 42
    return-void
.end method
