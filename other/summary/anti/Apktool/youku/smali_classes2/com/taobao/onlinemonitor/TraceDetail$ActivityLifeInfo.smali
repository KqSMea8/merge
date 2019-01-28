.class public Lcom/taobao/onlinemonitor/TraceDetail$ActivityLifeInfo;
.super Ljava/lang/Object;
.source "TraceDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Asf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityLifeInfo"
.end annotation


# instance fields
.field activityName:Ljava/lang/String;

.field cpuTime:J

.field methodName:Ljava/lang/String;

.field realTime:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
