.class public Lc8/VNn;
.super Ljava/lang/Object;
.source "SystemMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/WNn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SMPState"
.end annotation


# static fields
.field public static final CHANGING_VIDEO:I = 0x1

.field public static final NORMAL:I


# instance fields
.field final synthetic this$0:Lc8/WNn;


# direct methods
.method private constructor <init>(Lc8/WNn;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lc8/VNn;->this$0:Lc8/WNn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
