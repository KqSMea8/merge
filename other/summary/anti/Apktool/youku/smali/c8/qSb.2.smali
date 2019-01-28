.class public Lc8/qSb;
.super Ljava/lang/Object;
.source "AdapterBaseModule.java"

# interfaces
.implements Lc8/pSb;


# instance fields
.field public aggregationType:Lcom/alibaba/motu/crashreportadapter/module/AggregationType;

.field public businessType:Lcom/alibaba/motu/crashreportadapter/module/BusinessType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public customizeBusinessType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lc8/qSb;->businessType:Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    .line 21
    iput-object v0, p0, Lc8/qSb;->customizeBusinessType:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lc8/qSb;->aggregationType:Lcom/alibaba/motu/crashreportadapter/module/AggregationType;

    return-void
.end method
