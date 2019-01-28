.class public Lc8/IG;
.super Ljava/lang/Object;
.source "AppInfoMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/JG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UtData"
.end annotation


# instance fields
.field public download_end:J

.field public download_start:J

.field public error_message:Ljava/lang/String;

.field public error_type:I

.field public is_wifi:Z

.field public operate_end:J

.field public success:Z

.field public update_start_time:J

.field public update_type:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/HG;)V
    .locals 0
    .param p1, "x0"    # Lc8/HG;

    .prologue
    .line 92
    invoke-direct {p0}, Lc8/IG;-><init>()V

    return-void
.end method
