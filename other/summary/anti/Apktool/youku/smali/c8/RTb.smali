.class public final Lc8/RTb;
.super Ljava/lang/Object;
.source "UTConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/STb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PrivateLogFields"
.end annotation


# static fields
.field public static final HOST_APPKEY:Ljava/lang/String; = "_hak"

.field public static final HOST_APPVERSION:Ljava/lang/String; = "_hav"

.field public static final SEND_LOG_SYNC:Ljava/lang/String; = "_sls"


# instance fields
.field final synthetic this$0:Lc8/STb;


# direct methods
.method public constructor <init>(Lc8/STb;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lc8/RTb;->this$0:Lc8/STb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
