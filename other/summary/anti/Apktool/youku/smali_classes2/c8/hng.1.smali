.class public Lc8/hng;
.super Ljava/lang/Object;
.source "AntManager.java"


# static fields
.field public static final ANT_INIT_ACTION:Ljava/lang/String; = "ant_init_finish_action"

.field public static final ANT_UPDATE_ACTION:Ljava/lang/String; = "ant_update_action"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static getInstance()Lc8/gng;
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lc8/qng;->getInstance()Lc8/qng;

    move-result-object v0

    return-object v0
.end method
