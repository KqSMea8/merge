.class public Lc8/EKj;
.super Ljava/lang/Object;
.source "NetworkManager.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/FKj;->setDefaultHostnameVerifier()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/FKj;


# direct methods
.method constructor <init>(Lc8/FKj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/FKj;

    .prologue
    .line 74
    iput-object p1, p0, Lc8/EKj;->this$0:Lc8/FKj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method
