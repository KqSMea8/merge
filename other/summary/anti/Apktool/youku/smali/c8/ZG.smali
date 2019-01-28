.class public Lc8/ZG;
.super Ljava/lang/Object;
.source "ConfigDataUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/aH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfigData"
.end annotation


# instance fields
.field public json:Ljava/lang/String;

.field public systemtime:Ljava/lang/String;

.field final synthetic this$0:Lc8/aH;

.field public tk:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc8/aH;)V
    .locals 1

    .prologue
    .line 114
    iput-object p1, p0, Lc8/ZG;->this$0:Lc8/aH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lc8/ZG;->systemtime:Ljava/lang/String;

    return-void
.end method
