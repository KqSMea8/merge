.class public Lc8/wrf;
.super Ljava/lang/Object;
.source "FrontEndParams.java"


# instance fields
.field public jsParam:Ljava/lang/String;

.field public pageUrl:Ljava/lang/String;

.field public userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsParam"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lc8/wrf;->jsParam:Ljava/lang/String;

    .line 15
    return-void
.end method
