.class public Lc8/Sdo;
.super Ljava/lang/Object;
.source "SmoothImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Tdo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Transfrom"
.end annotation


# instance fields
.field endRect:Lc8/Qdo;

.field endScale:F

.field rect:Lc8/Qdo;

.field scale:F

.field startRect:Lc8/Qdo;

.field startScale:F

.field final synthetic this$0:Lc8/Tdo;


# direct methods
.method private constructor <init>(Lc8/Tdo;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lc8/Sdo;->this$0:Lc8/Tdo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/Tdo;Lc8/Odo;)V
    .locals 0
    .param p1, "x0"    # Lc8/Tdo;
    .param p2, "x1"    # Lc8/Odo;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lc8/Sdo;-><init>(Lc8/Tdo;)V

    return-void
.end method


# virtual methods
.method initStartIn()V
    .locals 2

    .prologue
    .line 175
    iget v1, p0, Lc8/Sdo;->startScale:F

    iput v1, p0, Lc8/Sdo;->scale:F

    .line 177
    :try_start_0
    iget-object v1, p0, Lc8/Sdo;->startRect:Lc8/Qdo;

    invoke-virtual {v1}, Lc8/Qdo;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Qdo;

    iput-object v1, p0, Lc8/Sdo;->rect:Lc8/Qdo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method initStartOut()V
    .locals 2

    .prologue
    .line 184
    iget v1, p0, Lc8/Sdo;->endScale:F

    iput v1, p0, Lc8/Sdo;->scale:F

    .line 186
    :try_start_0
    iget-object v1, p0, Lc8/Sdo;->endRect:Lc8/Qdo;

    invoke-virtual {v1}, Lc8/Qdo;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Qdo;

    iput-object v1, p0, Lc8/Sdo;->rect:Lc8/Qdo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method
