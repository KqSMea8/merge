.class public Lc8/hXf;
.super Ljava/lang/Object;
.source "WXValidateProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/iXf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WXModuleValidateResult"
.end annotation


# instance fields
.field public isSuccess:Z

.field public validateInfo:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
