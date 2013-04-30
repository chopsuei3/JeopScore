.class public Lcom/google/appinventor/components/runtime/util/ReplCommController;
.super Ljava/lang/Object;
.source "ReplCommController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;
    }
.end annotation


# static fields
.field public static final BLOCKS_EDITOR_PORT:I = 0x2703

.field private static final LOG_TAG:Ljava/lang/String; = "REPL Controller"


# instance fields
.field private blocksEditorReplController:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

.field private everStarted:Z

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 2
    .parameter "form"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController;->everStarted:Z

    .line 62
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController;->handler:Landroid/os/Handler;

    .line 67
    new-instance v0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    const/16 v1, 0x2703

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;-><init>(Lcom/google/appinventor/components/runtime/util/ReplCommController;I)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController;->blocksEditorReplController:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    .line 68
    return-void
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/util/ReplCommController;)Lcom/google/appinventor/components/runtime/Form;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController;->blocksEditorReplController:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->StopServer()V

    .line 83
    return-void
.end method

.method public startListening(Z)V
    .locals 2
    .parameter "showAlert"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController;->everStarted:Z

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController;->blocksEditorReplController:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->ServerRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController;->blocksEditorReplController:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->StartServer()V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController;->everStarted:Z

    .line 104
    if-eqz p1, :cond_0

    .line 105
    new-instance v0, Lcom/google/appinventor/components/runtime/Notifier;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/Notifier;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const-string v1, "Listening to App Inventor. Your App should display shortly."

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Notifier;->ShowAlert(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopListening(Z)V
    .locals 0
    .parameter "showAlert"

    .prologue
    .line 76
    return-void
.end method
