.class public Lc8/JMn;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/KMn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MPS"
.end annotation


# static fields
.field public static final END:I = 0x8

.field public static final ERROR:I = -0x1

.field public static final IDLE:I = 0x1

.field public static final INITIALIZED:I = 0x2

.field public static final PAUSED:I = 0x6

.field public static final PLAYBACKCOMPLETED:I = 0x9

.field public static final PREPARED:I = 0x4

.field public static final PREPARING:I = 0x3

.field public static final STARTED:I = 0x5

.field public static final STOPPED:I = 0x7

.field public static final UNINITIALIZED:I


# instance fields
.field final synthetic this$0:Lc8/KMn;


# direct methods
.method private constructor <init>(Lc8/KMn;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lc8/JMn;->this$0:Lc8/KMn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
